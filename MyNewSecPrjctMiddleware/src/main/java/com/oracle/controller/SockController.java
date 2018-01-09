package com.oracle.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.DestinationVariable;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.messaging.simp.annotation.SubscribeMapping;
import org.springframework.stereotype.Controller;

import com.oracle.model.Chat;

@Controller
public class SockController {
	//  to send data to the client
	@Autowired
private SimpMessagingTemplate messagingTemplate;
	// list of username's who has joined the chat room
private List<String> users = new ArrayList<String>();
@SubscribeMapping("/join/{username}")
public List<String> join(@DestinationVariable String username){
	if(!users.contains(username))
		users.add(username);
	messagingTemplate.convertAndSend("/topic/join",username);
	return users; // newly joined user
}

@MessageMapping(value="/chat")
public void chatMessage(Chat chat){ //to,from,message
	// group chat
	if(chat.getTo().equals("all")){
	messagingTemplate.convertAndSend("/queue/chats",chat);		
	}
	else{
		messagingTemplate.convertAndSend("/queue/chats/"+chat.getTo(),chat);
		messagingTemplate.convertAndSend("/queue/chats/"+chat.getFrom(),chat);
	}
}
}