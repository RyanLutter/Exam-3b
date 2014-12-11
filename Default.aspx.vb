Imports System.Threading
Imports System.Globalization

Partial Class _Default
    Inherits System.Web.UI.Page

    Protected Overrides Sub InitializeCulture()
        Dim language As String = Request("dd_languages")

        If language IsNot Nothing Or language <> "" Then
            Thread.CurrentThread.CurrentUICulture = New CultureInfo(language)
            Thread.CurrentThread.CurrentCulture = CultureInfo.CreateSpecificCulture(language)
        End If
    End Sub




    Protected Sub button_submit_Click(sender As Object, e As EventArgs) Handles button_submit.Click

        ' this handles the radio buttons/output
        If button_male.Checked Then
            label_outputname.Text = "Mr. "
        End If

        If button_female.Checked Then
            label_outputname.Text = "Ms. "
        End If

        ' handles getting the date from the calendar for label
        label_calendarresponse.Text = calendar.SelectedDate.ToShortDateString()

        ' outputting the salary that was inputted by user
        Dim salary As Decimal = Val(tb_salary.Text)
        label_outputsalary.Text = String.Format("{0:C}", salary)

        ' sets the input name as the output name
        label_usersname.Text = StrConv(tb_name.Text, VbStrConv.ProperCase)

        ' enables the output information section
        label_hello.Visible = True
        label_outputname.Visible = True
        label_usersname.Visible = True
        label_graduateresponse.Visible = True
        label_calendarresponse.Visible = True
        label_salaryrepsonse.Visible = True
        label_outputsalary.Visible = True
        label_salaryresponse2.Visible = True
        label_github.Visible = True
        button_github.Visible = True
        button_restart.Visible = True

        ' disables the input information section
        content_header.Visible = False
        label_name.Visible = False
        tb_name.Visible = False
        label_gender.Visible = False
        button_male.Visible = False
        button_female.Visible = False
        label_graduation.Visible = False
        calendar.Visible = False
        label_salary.Visible = False
        tb_salary.Visible = False
        button_submit.Visible = False
        rfv_amount.Visible = False
        rfv_salary.Visible = False
        rfv_name.Visible = False

    End Sub

    Protected Sub GitHub_Click(sender As Object, e As EventArgs) Handles button_github.Click

        Response.Redirect("https://github.com/RyanLutter")

    End Sub

    Protected Sub Page_Load(sender As Object, e As EventArgs) Handles Me.Load

        ' sets todays date as the selected date
        calendar.VisibleDate = Today

        ' sets the focus on the name textbox
        tb_name.Focus()

        ' hides the output section when page loads
        label_hello.Visible = False
        label_usersname.Visible = False
        label_outputname.Visible = False
        label_graduateresponse.Visible = False
        label_calendarresponse.Visible = False
        label_salaryrepsonse.Visible = False
        label_outputsalary.Visible = False
        label_salaryresponse2.Visible = False
        label_github.Visible = False
        button_github.Visible = False
        button_restart.Visible = False



    End Sub

    Protected Sub button_restart_Click(sender As Object, e As EventArgs) Handles button_restart.Click

        ' enables the input information section
        content_header.Visible = True
        label_name.Visible = True
        tb_name.Visible = True
        label_gender.Visible = True
        button_male.Visible = True
        button_female.Visible = True
        label_graduation.Visible = True
        calendar.Visible = True
        label_salary.Visible = True
        tb_salary.Visible = True
        button_submit.Visible = True
        rfv_amount.Visible = False
        rfv_salary.Visible = False
        rfv_name.Visible = False

        ' hides the output section when page loads
        label_hello.Visible = False
        label_usersname.Visible = False
        label_outputname.Visible = False
        label_graduateresponse.Visible = False
        label_calendarresponse.Visible = False
        label_salaryrepsonse.Visible = False
        label_outputsalary.Visible = False
        label_salaryresponse2.Visible = False
        label_github.Visible = False
        button_github.Visible = False
        button_restart.Visible = False


        ' clear the input form
        tb_name.Text = String.Empty
        tb_salary.Text = String.Empty
        button_male.Checked = False
        button_female.Checked = False
        calendar.SelectedDate = Today
        calendar.VisibleDate = Today


    End Sub
End Class
