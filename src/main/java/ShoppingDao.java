import Item.java.Item;

import java.util.ArrayList;
import java.util.List;

public class ShoppingDao implements Items{
    private  List<Item> items;




    public List<Item> all(){
        if(items == null){
            items = generateItems();
        }
        return items;
    }

    private List<Item> generateItems() {
        List<Item> items = new ArrayList<>();
        items.add(new Item(
                1,
                "Apple",
                10
        ));
        items.add(new Item(
                1,
                "Apple",
                10
        ));
        items.add(new Item(
                1,
                "Apple",
                10
        ));
        items.add(new Item(
                1,
                "Apple",
                10
        ));
        items.add(new Item(
                1,
                "Apple",
                10
        ));

        return items;
    }

}
