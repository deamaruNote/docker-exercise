var inorderTraversal = function(root) {
    let result = [];
    if(root == []){
        return []
    }
    treeVail(root, result)
    return result;
};

let treeVail = function(root, result){
    if(root === null){
        return
    }
    console.log(root, result);
    // 3個為一組
    root.unshift(root);
    // treeVail(result);
}
inorderTraversal([1,null,2,3]); //[1,3,2]
inorderTraversal([]);           //[]
inorderTraversal([1]);          //[1]
