package com.tanmay.mycucumber;

public class Belly {
    private int cukes;

    public void eat(int cukes) {
        this.cukes = cukes;
        System.out.println("eating "+cukes+" cukes..");
    }

    public String getSound(int waitingTime) {
        if (cukes > 41 && waitingTime >= 1) {
            System.out.println("growling");
            return "growl";
        } else {
            System.out.println("silent");
            return "silent";
        }
    }
}