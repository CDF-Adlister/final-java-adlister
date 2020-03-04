public class ItemDaoFactory {
    private static Items itemsDao;

    public static Items getItemsDao(){
        if(itemsDao == null){
            itemsDao = new ItemDaoFactory();
        }
        return itemsDao;
    }
}
