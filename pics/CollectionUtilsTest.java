package com.pkmj.base.test.utils;

import java.util.ArrayList;
import java.util.List;

import org.junit.Test;

import com.pkmj.base.utils.CollectionUtils;

public class CollectionUtilsTest {

    @Test
    public void testCombine1() throws Exception {
        List<Integer> nList = new ArrayList<Integer>();
        nList.add(new Integer("1"));
        nList.add(new Integer("2"));
        nList.add(new Integer("3"));
        nList.add(new Integer("4"));
        nList.add(new Integer("5"));
        nList.add(new Integer("6"));
        nList.add(new Integer("7"));
        Integer mNum = 5;
        List<List<Integer>> list = CollectionUtils.buildAllCombination(nList, mNum);
        for (List<Integer> list2 : list) {
            for (Integer integer : list2) {
                System.out.print(integer + " ");
            }
            System.out.println();
        }
        System.out.println("--------------x1------------------> " + list.size());
    }

    @Test
    public void testCombine2() throws Exception {
        List<Integer> nList = new ArrayList<Integer>();
        nList.add(new Integer("1"));
        nList.add(new Integer("2"));
        nList.add(new Integer("3"));
        nList.add(new Integer("4"));
        Integer mNum = 5;
        List<List<Integer>> list = CollectionUtils.buildAllCombination(nList, mNum);
        for (List<Integer> list2 : list) {
            for (Integer integer : list2) {
                System.out.print(integer + " ");
            }
            System.out.println();
        }
        System.out.println("--------------x2------------------> " + list.size());
    }
    
}
