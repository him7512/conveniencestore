package com.liuqi.analysis.controller.tool;

import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
public class Subtraction {

    /**
     * List<Double>对应相减
     */
    public List<Double> subtractArrays(Double[] array1, Double[] array2) {
        if (array1.length != array2.length) {
            throw new IllegalArgumentException("Arrays must be of equal length");
        }

        List<Double> resultList = new ArrayList<>();
        for (int i = 0; i < array1.length; i++) {
            resultList.add(array1[i] - array2[i]);
        }
        return resultList;
    }




}
