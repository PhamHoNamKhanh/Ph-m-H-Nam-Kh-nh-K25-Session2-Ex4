CREATE DATABASE phone_number;
USE phone_number;

CREATE TABLE users(
user_id INT PRIMARY KEY AUTO_INCREMENT, 
phone CHAR (15) NOT NULL UNIQUE,
fullname VARCHAR (100) NOT NULL,
email VARCHAR (100) NOT NULL UNIQUE,
age INT CHECK (age >0)
);

/*
2 phương pháp giải quyểt
- sử dụng ALTER table và change để đổi thuộc tính của phone number
- Drop table để create table mới 
Đánh giá:
		varchar:
			+ kiểu dữ liệu này có thể giữ lại con số 0 ở đầu tuy nhiên, 
            phần dữ liệu sẽ rất dễ bị nhập quá quy định vì varchar có thể mở rộng
            độ dài của nó cho tương thích với độ dài dữ liệu được cung cấp
		char(hợp lý hơn):
			+ kiểu dữ liệu char khi đã được gắn độ dài cố định thì khi nhập liệu
			dữ liệu đưa vào cũng không bị nhập quá dài vì số điện thoại có độ dài 
            giới hạn được cung cấp là 15 ký tự với mỗi số
*/