@isTest
public class AccountUtilityTest {
    @isTest
    static void testUpdateDescription() {
        // Insert test account
        Account acc = new Account(Name = 'Test Account');
        insert acc;
        
        // Verify trigger set description
        Account insertedAcc = [SELECT Id, Description FROM Account WHERE Id = :acc.Id];
        System.assertEquals('Updated by AccountUtility', insertedAcc.Description);
        
        // Update account
        insertedAcc.Name = 'Updated Name';
        update insertedAcc;
        
        // Verify description still updated
        Account updatedAcc = [SELECT Id, Description FROM Account WHERE Id = :insertedAcc.Id];
        System.assertEquals('Updated by AccountUtility', updatedAcc.Description);
    }
}