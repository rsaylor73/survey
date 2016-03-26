<!-- Page Content -->

    <!--
    device 0 is desktop
    device 1 is mobile
    -->

    <div class="container">

        <div class="row">
            <div class="col-lg-8 text-left">
                Your vacation is very important to us. To help us ensure that you received the high quality service that we expect, please tell us how we did by completing the following survey.<br><br>

                <form>
                <table class="table">
                
                <!-- Q1 -->
                <tr>
                    <td><b>How did you hear about us?</b></td>
                </tr>
                <tr>
                    <td><select name="q1" required>
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
                    <td><select name="q3" id="q3" required>
                        <option value="">--Please Select--</option>
                        <option selected>Aggressor</option>
                        <option>Tour Operator</option>
                        <option>Dive Store</option>
                        <option>Travel Agent</option>
                    </select></td>
                </tr>

                <!-- Q4 -->
                <tr><td><b>Please rate your reservation process:</b></td>
                <tr><td><select name="q4" required>
                    <option value="">--Select--</option>
                    <option value="5">5 (Very Satisfied)</option>
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

                <!-- Q6 -->
                <tr>
                    <td><b>If your travel arrangements were made by our in house travel department, LiveAboard Vacations, please tell us about your experience.</b></td>
                </tr>
                <tr>
                    <td><textarea name="q6" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>


                <!-- Q7 -->
                <tr>
                    <td><b>Please rate your onboard experience:</b></td>
                </tr>
                <tr>
                    <td><b>Accommodations?</b></td>
                </tr>
                <tr>
                    <td><select name="q7a" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Service?</b></td>
                </tr>
                <tr>
                    <td><select name="q7b" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Food?</b></td>
                </tr>
                <tr>
                    <td><select name="q7a" required>
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        </select>
                    </td>
                </tr>

               <tr>
                    <td><b>Diving?</b></td>
                </tr>
                <tr>
                    <td><select name="q7a">
                        <option value="">--Select--</option>
                        <option value="5">5 (Excellent)</option>
                        <option>4</option>
                        <option value="3">3 (Fair)</option>
                        <option>2</option>
                        <option value="1">1 (Poor)</option>
                        <option value="">N/A</option>
                        </select>
                    </td>
                </tr>   

                <!-- Q8 -->
                <tr>
                    <td><b>Please tell us about your experience.</b></td>
                </tr>
                <tr>
                    <td><textarea name="q8" cols={if $device eq "0"}75{/if}{if $device eq "1"}40{/if} rows=5></textarea></td>
                </tr>

                <!-- Q9 -->
                <tr>
                    <td><b>How likely are you to continue to travel with us?</b></td>
                </tr>
                <tr>
                    <td>
                    <select name="q9" required>
                    <option value="">--Select--</option>
                    <option value="5">Very Likely</option>
                    <option value="4">Likely</option>
                    <option value="3">Somewhat Likely</option>
                    <option value="2">Unlikely</option>
                    <option value="1">Very Unlikely</option>
                    </select>
                    </td>
                </tr>


                <tr><td><input type="submit" value="Submit Survey" class="btn btn-primary"></td></tr>

                </table>
                </form>


            </div>
        </div>
        <!-- /.row -->

    </div>
    <!-- /.container -->