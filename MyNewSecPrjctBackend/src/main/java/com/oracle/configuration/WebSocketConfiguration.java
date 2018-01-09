package com.oracle.configuration;

import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.messaging.simp.config.ChannelRegistration;
import org.springframework.messaging.simp.config.MessageBrokerRegistry;
import org.springframework.web.socket.config.annotation.EnableWebSocketMessageBroker;
import org.springframework.web.socket.config.annotation.StompEndpointRegistry;
import org.springframework.web.socket.config.annotation.WebSocketMessageBrokerConfigurer;
@Configuration
@EnableWebSocketMessageBroker // enable broker based stomp messaging
// -Autodecting annotation @MessageMapping, @SubscribeMapping
@ComponentScan(basePackages="com.oracle")
public class WebSocketConfiguration implements WebSocketMessageBrokerConfigurer {
	
	
	public void registerStompEndpoints(StompEndpointRegistry registry) {
		// JS Stomp.over("../chatmodule")
		registry.addEndpoint("/chatmodule").withSockJS();
	}

	public void configureClientInboundChannel(ChannelRegistration registration) {
		// TODO Auto-generated method stub
		
	}

	public void configureClientOutboundChannel(ChannelRegistration registration) {
		// TODO Auto-generated method stub
		
	}

	public void configureMessageBroker(MessageBrokerRegistry registry) {
		// enablesimplebroker destination prefixes - by Spring controller to send message to client
		// to send data from server to client 
		// topic - to notify the newly joined username
		// queue - to send chat message
		// communication direction - from server to client
		// server users destination /queue , /topic to send messages to the client
		// client will receive the message by subscribing $scope.subscribe("/topic/join",....)
		registry.enableSimpleBroker("/queue/" , "/topic/"); // server to client
		
		// client to server - destination prefixes as /app
		// in client side ..send("/app/join",.....)
		registry.setApplicationDestinationPrefixes("/app"); // client to server
	}
	

}
