package kr.go.mss.service;

import java.util.List;

import kr.go.mss.dto.SampleDTO;

public interface SampleService {
	public List<SampleDTO> sampleList() throws Exception;
	public SampleDTO getSample(String id) throws Exception;
	public void addSample(SampleDTO sample) throws Exception;
}
