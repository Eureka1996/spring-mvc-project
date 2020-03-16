<html>
<body>
    <h2>Hello World!</h2>

    <form action="testPojo" method="post">
        username:<input type="text" name="username"/>
        <br/>
        password:<input type="password" name="password" />
        <br/>
        email:<input type="text" name="email" />
        <br/>
        age:<input type="text" name="age" />
        <br/>
        city:<input type="text" name="address.city" />
        <br/>
        province:<input type="text" name="address.province" />
        <br/>
        <input type="submit" value="SUBMIT"/>
    </form>
    <br/>


    <a href="testRequestParam?userName=wufuqiang&age=19">Test Request Param</a>
    <br/>

    <form action="testRest/1" method="post">
        <input type="hidden" name="_method" value="PUT"/>
        <input type="submit" value="TestRest Put"/>
    </form>
    <br/>
    <form action="testRest/2" method="post">
        <input type="hidden" name="_method" value="DELETE"/>
        <input type="submit" value="TestRest Delete"/>
    </form>
    <br/>

    <a href="testPathVariable/1">Path Variable 1</a>
    <br/>

    <a href="testPathVariable/2">Path Variable 2</a>
    <br/>

    <a href="testParamsAndheaders?username=wufq&age=10">Test Params And Headers</a>

    <br/>
    <form action="testMethod" method="post">
        <input type="submit" value="submit">
    </form>

    <a href="testMethod">Test Method</a>
    <br/><br/>

    <a href="helloWorld">Hello World</a>
</body>
</html>
