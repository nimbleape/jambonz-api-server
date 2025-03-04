-- create one service provider
insert into service_providers (service_provider_sid, name, description, root_domain) 
values ('2708b1b3-2736-40ea-b502-c53d8396247f', 'sip.jambonz.us', 'jambonz.us service provider', 'sip.jambonz.us');
insert into api_keys (api_key_sid, token) 
values ('3f35518f-5a0d-4c2e-90a5-2407bb3b36f0', '38700987-c7a4-4685-a5bb-af378f9734de');

-- create our products
insert into products (product_sid, name, category)
values
('c4403cdb-8e75-4b27-9726-7d8315e3216d', 'concurrent call session', 'voice_call_session'),
('2c815913-5c26-4004-b748-183b459329df', 'registered device', 'device'),
('35a9fb10-233d-4eb9-aada-78de5814d680', 'api call', 'api_rate');

-- create predefined carriers
insert into predefined_carriers (predefined_carrier_sid, name, requires_static_ip, e164_leading_plus, 
requires_register, register_username, register_password, 
register_sip_realm, tech_prefix, inbound_auth_username, inbound_auth_password, diversion)
VALUES
('7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', 'Twilio', 0, 1, 0, '<your-twilio-credential-username>', '<your-twilio-credential-password>', NULL, NULL, NULL, NULL, NULL),
('032d90d5-39e8-41c0-b807-9c88cffba65c', 'Voxbone', 0, 1, 0, '<your-voxbone-outbound-username>', '<your-voxbone-outbound-password>', NULL, NULL, NULL, NULL, '<your-voxbone-DID>'),
('17479288-bb9f-421a-89d1-f4ac57af1dca', 'TelecomsXChange', 0, 0, 0, NULL, NULL, NULL, 'your-tech-prefix', NULL, NULL, NULL),
('e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', 'Simwood', 0, 1, 0, '<your-simwood-auth-trunk-username>',  '<your-simwood-auth-trunk-password>', NULL, NULL, NULL, NULL, NULL);

-- TelecomXchange gateways
insert into predefined_sip_gateways (predefined_sip_gateway_sid, predefined_carrier_sid, ipv4, netmask, port, inbound, outbound)
VALUES
('c9c3643e-9a83-4b78-b172-9c09d911bef5', '17479288-bb9f-421a-89d1-f4ac57af1dca', '174.136.44.213', 32, 5060, 1, 0),
('3b5b7fa5-4e61-4423-b921-05c3283b2101', '17479288-bb9f-421a-89d1-f4ac57af1dca', 'sip01.TelecomsXChange.com', 32, 5060, 0, 1);

insert into predefined_smpp_gateways (predefined_smpp_gateway_sid, predefined_carrier_sid, ipv4, netmask, port, inbound, outbound)
VALUES
('9b72467a-cfe3-491f-80bf-652c38e666b9', '17479288-bb9f-421a-89d1-f4ac57af1dca', 'smpp01.telecomsxchange.com', 32, 2776, 0, 1),
('d22883b9-f124-4a89-bab2-4487cf783f64', '17479288-bb9f-421a-89d1-f4ac57af1dca', '174.136.44.11', 32, 2775, 1, 0),
('fdcf7f1e-1f5f-487b-afb3-c0f75ed0aa3d', '17479288-bb9f-421a-89d1-f4ac57af1dca', '174.136.44.213', 32, 2775, 1, 0);

-- twilio gateways
insert into predefined_sip_gateways (predefined_sip_gateway_sid, predefined_carrier_sid, ipv4, netmask, port, inbound, outbound)
VALUES
('d2ccfcb1-9198-4fe9-a0ca-6e49395837c4', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '54.172.60.0', 30, 5060, 1, 0),
('6b1d0032-4430-41f1-87c6-f22233d394ef', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '54.244.51.0', 30, 5060, 1, 0),
('0de40217-8bd5-4aa8-a9fd-1994282953c6', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '54.171.127.192', 30, 5060, 1, 0),
('37bc0b20-b53c-4c31-95a6-f82b1c3713e3', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '35.156.191.128', 30, 5060, 1, 0),
('39791f4e-b612-4882-a37e-e92711a39f3f', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '54.65.63.192', 30, 5060, 1, 0),
('81a0c8cb-a33e-42da-8f20-99083da6f02f', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '54.252.254.64', 30, 5060, 1, 0),
('eeeef07a-46b8-4ffe-a4f2-04eb32ca889e', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '54.169.127.128', 30, 5060, 1, 0),
('fbb6c194-4b68-4dff-9b42-52412be1c39e', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '177.71.206.192', 30, 5060, 1, 0),
('3ed1dd12-e1a7-44ff-811a-3cc5dc13dc72', '7d509a18-bbff-4c5d-b21e-b99bf8f8c49a', '<your-domain>.pstn.twilio.com', 32, 5060, 0, 1);

-- voxbone gateways
insert into predefined_sip_gateways (predefined_sip_gateway_sid, predefined_carrier_sid, ipv4, netmask, port, inbound, outbound)
VALUES
('d531c582-2103-42a0-b9f0-f80c215b3ec5', '032d90d5-39e8-41c0-b807-9c88cffba65c', '81.201.83.45', 32, 5060, 1, 0),
('95c888e5-c959-4d92-82c4-8597dddff75e', '032d90d5-39e8-41c0-b807-9c88cffba65c', '81.201.86.45', 32, 5060, 1, 0),
('1de3b2a1-96f0-407a-bcc4-ce371d823a8d', '032d90d5-39e8-41c0-b807-9c88cffba65c', '81.201.82.45', 32, 5060, 1, 0),
('50c1f91a-6080-4495-a241-6bba6e9d9688', '032d90d5-39e8-41c0-b807-9c88cffba65c', '81.201.85.45', 32, 5060, 1, 0),
('e6ebad33-80d5-4dbb-bc6f-a7ae08160cc6', '032d90d5-39e8-41c0-b807-9c88cffba65c', '81.201.84.45', 32, 5060, 1, 0),
('7bae60b3-4237-4baa-a711-30ea3bce19d8', '032d90d5-39e8-41c0-b807-9c88cffba65c', '185.47.148.45', 32, 5060, 1, 0),
('bc933522-18a2-47d8-9ae4-9faa8de4e927', '032d90d5-39e8-41c0-b807-9c88cffba65c', 'outbound.voxbone.com', 32, 5060, 0, 1);

-- simwood gateways
insert into predefined_sip_gateways (predefined_sip_gateway_sid, predefined_carrier_sid, ipv4, netmask, port, inbound, outbound)
VALUES
('91cb050f-9826-4ac9-b736-84a10372a9fe', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '178.22.139.77', 32, 5060, 1, 0),
('58700fad-98bf-4d31-b61e-888c54911b35', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '185.63.140.77', 32, 5060, 1, 0),
('d020fd9e-7fdb-4bca-ae0d-e61b38142873', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '185.63.142.77', 32, 5060, 1, 0),
('441fd2e7-c845-459c-963d-6e917063ed9a', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '185.63.141.77', 32, 5060, 1, 0),
('1e0d3e80-9973-4184-9bec-07ae564f983f', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '185.63.143.77', 32, 5060, 1, 0),
('e56ec745-5f37-443f-afb4-7bbda31ae7ac', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '178.22.140.34', 32, 5060, 1, 0),
('e7447e7e-2c7d-4738-ab53-097c187236ff', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', '178.22.143.66', 32, 5060, 1, 0),
('5f431d42-48e4-44ce-a311-d946f0b475b6', 'e6fb301a-1af0-4fb8-a1f6-f65530c6e1c6', 'out.simwood.com', 32, 5060, 0, 1);

