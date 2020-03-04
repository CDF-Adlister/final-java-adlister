package Item.java;

public class Item {
    private long id;
    private String name;
    private int priceInCents;

    public Item(long id, String name, int priceInCents){
        this.id = id;
        this.name = name;
        this.priceInCents = priceInCents;
    }

    public void setId(long id) {
        this.id = id;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setPriceInCents(int priceInCents) {
        this.priceInCents = priceInCents;
    }

    public long getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public int getPriceInCents() {
        return priceInCents;
    }
}
