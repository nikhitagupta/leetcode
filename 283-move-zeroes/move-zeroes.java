class Solution {
    public void moveZeroes(int[] nums) {
        int insertpositions=0;
        for(int i=0;i<nums.length;i++){
            if(nums[i]!=0){
                nums[insertpositions]=nums[i];
                insertpositions++;
            }
        }
        while(insertpositions<nums.length){
            nums[insertpositions++]=0;
        }
        
    }
}