package kr.go.molab.mapper;

import org.apache.ibatis.annotations.Insert;

import kr.go.molab.dto.AttachDTO;

public interface AttachMapper {
	@Insert("INSERT INTO attach (uuid, uploadpath, filename, filetype, bno) "
			+ "VALUES (#{uuid}, #{uploadpath}, #{filename}, #{filetype}, #{bno})")
	public int insertAttach(AttachDTO attachVO);
}