---------------------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------THỰC HIỆN PHÂN QUYỀN------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------------------------------------

--XỬ LÝ PHÂN QUYỀN CHO NHÓM NHÂN VIÊN
create login NV01 with password = '1' --Tao tai khoan ngoai master
create role nhomnhanvien
create user nhanvien1 for login NV01
exec Sp_addRoleMember nhomnhanvien, nhanvien1
--1. cấp quyền cho nhóm nhân viên xử lý bảng thông báo xem nhà(xem, thêm, xóa, sửa)
grant execute on FIND_MANHA_THONGBAOXEMNHA_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_TABLE_THONGBAOXEMNHA_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_THONGBAOXEMNHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_THONGBAOXEMNHATHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_THONGBAOXEMNHATHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_THONGBAOXEMNHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_THONGBAOXEMNHATHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_THONGBAOXEMNHABAN_NHOMNHANVIEN to nhomnhanvien
--2. cấp quyền cho nhóm nhân viên xử lý xem thông tin chi nhánh
grant execute on FIND_CHINHANH_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_CHINHANH_NHOMNHANVIEN to nhomnhanvien
--3. cấp quyền cho nhóm nhân viên xử lý xem, thêm, xóa, sửa bảng nhà, khách hàng,  hợp đồng
grant execute on FIND_NHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_NHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on FIND_NHACHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_NHACHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_NHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_NHACHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_NHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_NHACHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_NHABAN_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_NHACHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on FIND_KHACHHANG_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_KHACHHANG_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_KHACHHANG_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_KHACHHANG_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_KHACHHANG_NHOMNHANVIEN to nhomnhanvien
grant execute on FIND_HOPDONGCHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on FIND_HOPDONGBAN_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_HOPDONGCHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_HOPDONGBAN_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_HOPDONGCHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_HOPDONGBAN_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_HOPDONGCHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_HOPDONGBAN_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_HOPDONGCHOTHUE_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_HOPDONGBAN_NHOMNHANVIEN to nhomnhanvien
--4. cấp quyền cho nhóm nhân viên xử lý xem, thêm, xóa, sửa bảng chủ nhà
grant execute on FIND_CHUNHA_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_CHUNHA_NHOMNHANVIEN to nhomnhanvien
grant execute on ADD_CHUNHA_NHOMNHANVIEN to nhomnhanvien
grant execute on DELETE_CHUNHA_NHOMNHANVIEN to nhomnhanvien
grant execute on UPDATE_CHUNHA_NHOMNHANVIEN to nhomnhanvien
--5. cấp quyền cho nhóm nhân viên xử lý xem bảng nhân viên
grant execute on FIND_NHANVIEN_NHOMNHANVIEN to nhomnhanvien
grant execute on VIEW_NHANVIEN_NHOMNHANVIEN to nhomnhanvien


--XỬ LÝ PHÂN QUYỀN CHO NHÓM KHÁCH HÀNG
create login NT01 with password = '1' --Tao tai khoan ngoai master
create role nhomkhachhang1
create user khachhang1 for login NT01
exec Sp_addRoleMember nhomkhachhang1, khachhang1

grant execute on VIEW_TABLE_HOPDONGCHOTHUE_ROLEKH to nhomkhachhang1
grant execute on VIEW_TABLE_HOPDONGBAN_ROLEKH to nhomkhachhang1
grant execute on VIEW_TABLE_THONGBAOXEMNHA_ROLEKH to nhomkhachhang1
grant execute on VIEW_TABLE_NHABAN_ROLEKH to nhomkhachhang1
grant execute on VIEW_TABLE_NHACHOTHUE_ROLEKH to nhomkhachhang1
grant execute on VIEW_TABLE_LOAINHA_ROLEKH to nhomkhachhang1

--XỬ LÝ PHÂN QUYỀN CHO NHÓM KHÁCH HÀNG
create login CN01 with password = '1' --Tao tai khoan ngoai master
create role nhomchunha1
create user chunha1 for login CN01
exec Sp_addRoleMember nhomchunha1, chunha1

grant execute on ADD_ROW_CHUNHA_NHABAN to nhomchunha1
grant execute on ADD_ROW_CHUNHA_NHATHUE to nhomchunha1
grant execute on VIEW_TABLE_NHABAN_ROLECN to nhomchunha1
grant execute on VIEW_TABLE_NHATHUE_ROLECN to nhomchunha1
grant execute on DELETE_TABLE_NHABAN_ROLECN to nhomchunha1
grant execute on DELETE_TABLE_NHACHOTHUE_ROLECN to nhomchunha1
grant execute on VIEW_TABLE_THONGBAOXEMNHA_ROLECN to nhomchunha1
grant execute on VIEW_TABLE_HOPDONGBAN_ROLECN to nhomchunha1
grant execute on VIEW_TABLE_HOPDONGCHOTHUE_ROLECN to nhomchunha1