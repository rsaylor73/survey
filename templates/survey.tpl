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
                
                <!-- Q1 -->
                <tr>
                    <td><b>How did you hear about us?</b></td>
                </tr>
                <tr>
                    <td><select name="q1">
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

                <!-- Q2 -->
                <tr>
                    <td><b>Why did you choose us?</b></td>
                </tr>
                <tr>
                    <td><textarea name="q2" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>

                <!-- Q3 -->
                <tr>
                    <td><b>How were your reservations made?</b></td>
                </tr>
                <tr>
                    <td><select name="q3" id="q3">
                        <option value="">--Please Select--</option>
                        <option selected>Aggressor</option>
                        <option>Tour Operator</option>
                        <option>Dive Store</option>
                        <option>Travel Agent</option>
                    </select></td>
                </tr>

                <!-- Q4 -->
                <tr><td><b>Please rate your reservation process:</b></td>
                <tr><td><select name="q4">
                    <option value="5" selected>5 (Very Satisfied)</option>
                    <option>4</option>
                    <option value="3">3 (Neutral)</option>
                    <option>2</option>
                    <option value="1">1 (Unsatisfied)</option>
                    </select></td>
                </tr>

                <!-- future
                <tr>
                    <td>Did you receive a travel package prior to traveling?</td>
                </tr>
                <tr>
                    <td><select name="q4b"><option>Yes</option><option>No</option></select></td>
                </tr>
                -->

                <!-- Q5 -->
                <tr>
                    <td><b>How can we improve the reservation process?</b></td>
                </tr>
                <tr>
                    <td><textarea name="q5" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>




                </table>



            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->