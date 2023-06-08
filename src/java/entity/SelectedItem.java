/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package entity;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author taote
 */
public class SelectedItem {
      private List<Item> item;

    public SelectedItem() {
        item = new ArrayList<>();
    }

    public SelectedItem(List<Item> item) {
        this.item = item;
    }

    public List<Item> getItem() {
        return item;
    }

    public void setItem(List<Item> item) {
        this.item = item;
    }
    public int getQuantityById(int id){
        return getItemById(id).getQuantity();
    }
    private Item getItemById(int id){
        for (Item i : item) {
          if(i.getProduct().getId()==id)
              return i;
        }return null;
    }
    public void addItem(Item t){
        if(getItemById(t.getProduct().getId())!=null){
            Item m = getItemById(t.getProduct().getId());
            m.setQuantity(m.getQuantity()+t.getQuantity());
            
        }else{
            item.add(t);
        }
    }
    public void removeItem(int id){
        if(getItemById(id)!= null){
            item.remove(getItemById(id));
        }
    }
    public double getTotalMoney(){
        double t = 0;
        for (Item i : item) {
            t+=(i.getQuantity()*i.getProduct().getPrice());
        }return t;
    }
}
