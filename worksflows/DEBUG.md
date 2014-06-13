# FLR DEBUG WORKFLOW

1. git pull

2. git checkout -b $BRANCH_NAME

3. FIX BUG

4. WRITE testthat at TestSuite/$PKG/

4. git add .

5. ADD to NEWS $MESSAGE

6. git commit -m '$MESSAGE'

7. LOOP 3 - 6

8. make check PKG=$PKG

9. git checkout master

10. git merge

11. make update

12. git tag -a v$VERSION -m 'Version $VERSION'

13. git commit -m '$MESSAGE'

14. git push origin --tags
