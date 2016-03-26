<!-- Page Content -->

    <!--
    device 0 is desktop
    device 1 is mobile
    -->

    <div class="container">

        <div class="row">
            <div class="col-lg-8 text-left">
                <h1>Oceans For Youth :: Survey</h1>
                Your vacation is very important to us. To help us ensure that you received the high quality service that we expect, please tell us how we did by completing the following survey.<br>

                <table class="table">
                <tr>
                    <td><b>How did you hear about us?</b></td><td><select name="q1">
                        <option>Repeat guest</option>
                        <option>Friend</option>
                        <option>Dive Show</option>
                        <option>Internet</option>
                        <option>Magazine</option>
                        <option>Dive Store</option>
                        <option>Tour Operator</option>
                        <option>Travel Agent</option>
                    </select></td>
                </tr>
                <tr>
                    <td><b>Why did you choose us?</b></td>
                    <td><textarea name="q2" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>




                </table>



            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->