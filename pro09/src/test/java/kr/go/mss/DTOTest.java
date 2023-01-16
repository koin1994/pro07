package kr.go.mss;

import org.junit.Assert;
import org.junit.Test;
import kr.go.mss.dto.SampleDTO;
import lombok.extern.log4j.Log4j;
@Log4j
public class DTOTest {
	@Test
	public void test3() throws Exception {
		SampleDTO dto = new SampleDTO();
		dto.setId("kky");
		dto.setPw("1234");
		Assert.assertNotNull(dto);
		log.info(dto);
		log.info("--------------------");
		log.info(dto.getId());
	}
}