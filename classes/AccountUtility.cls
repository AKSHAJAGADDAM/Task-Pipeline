public with sharing class AccountUtility {
    public static void updateDescription(List<Account> accounts) {
        for (Account acc : accounts) {
            acc.Description = 'Updated by AccountUtility';
        }
    }
}