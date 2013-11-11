--insert into users (id, username, password, enabled) values (1, 'dongxin', '2a5c913554de2896465387104f786aec2de34be5842db8dcda916eb3f1276fb1', '1');
insert into users (id, username, password, enabled) values (2, 'caojian43', '40298bacbb04b692b30c217acdea5d591b80e769495442b8093ccbac16ddaa3e', '1');

--insert into authorities (id, username, authority) values (1, 'dongxin', 'ADMIN');
insert into authorities (id, username, authority) values (2, 'caojian43', 'ADMIN');

insert into home (id, content, srcpic, title) values (1, '欢迎光临东信知识产权', '/static/themes/images/carousel/blueprint.jpg','aaaaaaaaaaaaaaaa');
insert into home (id, content, srcpic, title) values (2, 'No matter how big and how small your business is. We are giving the best solution for your best value of money.', '/static/themes/images/carousel/3.jpg','sasasasas');

insert into team_member (id, name, resume, rank, email, workage) values (1, '白富美', 'A great guy in this field', 1, 'caoj@qq.com',2);
--insert into team_member (id, name, resume, rank, email, workage) values (2, '高富帅', 'Never failed', 3, 'caoj123@qq.com', 2);
--insert into team_member (id, name, resume, rank, email, workage) values (3, '小胖', 'Nice guy', 2, 'caojian123@qq.com', 3);

insert into case (id, name, client, status, is_display,handle_date) values (1, '测试1', '测试客户1',1,1,'2013-11-01');
insert into case (id, name, client, status, is_display,handle_date) values (2, '测试2', '测试客户2',0,1,'2013-11-01');
insert into case (id, name, client, status, is_display,handle_date) values (3, '测试3', '测试客户3',1,0,'2013-11-01');
--insert into case (id, name, client, status, is_display,handle_date) values (4, '测试4', '测试客户4',0,0,'2013-11-01');


insert into law_service (id, title, content) values (1, '43434234324', '54354543545');
insert into law_service (id, title, content) values (2, '345435435435', '324234234');
insert into law_service (id, title, content) values (3, '234324324', '234324324324');
--insert into law_service (id, title, content) values (4, '测试4测试4测试4测试4测试4测试4测试4', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (5, '测试5测试5测试5测试5测试5', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (6, '测试6测试6测试6测试6测试6', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (7, '测试7测试7测试7', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (8, '测试8测试8测试8测试8', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (9, '测试9测试9', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (10, '测试10测试10测试10测试10', '测试测试测试测试测试测试测试测试测试测试测试');
--insert into law_service (id, title, content) values (11, '测试11测试11测试11', '测试测试测试测试测试测试测试测试测试测试测试');