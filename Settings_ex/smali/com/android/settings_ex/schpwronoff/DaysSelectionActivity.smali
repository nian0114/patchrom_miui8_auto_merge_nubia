.class public Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "DaysSelectionActivity.java"


# instance fields
.field private mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

.field private mAlarmType:I

.field private final mHandler:Landroid/os/Handler;

.field private mOringinAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Landroid/widget/Toast;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)Lcom/android/settings_ex/schpwronoff/Alarm;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;

    .prologue
    .line 25
    iget v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    return v0
.end method

.method private initContentView()Landroid/view/View;
    .locals 2

    .prologue
    .line 77
    new-instance v0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;

    iget-object v1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v1, v1, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-direct {v0, p0, p0, v1}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity$1;-><init>(Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;Landroid/content/Context;Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;)V

    .line 94
    .local v0, "view":Landroid/view/View;
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 36
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v0

    .line 38
    .local v0, "actionBar":Lcn/nubia/commonui/actionbar/app/ActionBar;
    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 40
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 41
    const v2, 0x7f0c0e4a

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setTitle(I)V

    .line 43
    :cond_0
    const v2, 0x7f0c0ca2

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mToast:Landroid/widget/Toast;

    .line 44
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Lcom/android/settings_ex/schpwronoff/Alarms;->ALARM_TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    .line 45
    iget v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    if-nez v2, :cond_1

    .line 46
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->finish()V

    .line 57
    :goto_0
    return-void

    .line 49
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    invoke-static {v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 50
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget v3, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    invoke-static {v2, v3}, Lcom/android/settings_ex/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mOringinAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 51
    iget-object v2, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    if-nez v2, :cond_2

    .line 52
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->finish()V

    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->initContentView()Landroid/view/View;

    move-result-object v1

    .line 56
    .local v1, "content":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 68
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 73
    :goto_0
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 70
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->onBackPressed()V

    goto :goto_0

    .line 68
    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 9

    .prologue
    .line 60
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    invoke-static {v0, v1}, Lcom/android/settings_ex/schpwronoff/Alarms;->getAlarm(Landroid/content/ContentResolver;I)Lcom/android/settings_ex/schpwronoff/Alarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    .line 62
    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v0, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;->getCoded()I

    move-result v0

    if-nez v0, :cond_0

    .line 63
    iget v1, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mAlarmType:I

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mOringinAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-boolean v2, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mEnabled:Z

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mOringinAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v3, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mHour:I

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mOringinAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget v4, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mMinutes:I

    iget-object v0, p0, Lcom/android/settings_ex/schpwronoff/DaysSelectionActivity;->mOringinAlarm:Lcom/android/settings_ex/schpwronoff/Alarm;

    iget-object v5, v0, Lcom/android/settings_ex/schpwronoff/Alarm;->mDaysOfWeek:Lcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;

    const/4 v6, 0x1

    const-string v7, ""

    const-string v8, "silent"

    move-object v0, p0

    invoke-static/range {v0 .. v8}, Lcom/android/settings_ex/schpwronoff/Alarms;->setAlarm(Landroid/content/Context;IZIILcom/android/settings_ex/schpwronoff/Alarm$DaysOfWeek;ZLjava/lang/String;Ljava/lang/String;)V

    .line 65
    :cond_0
    return-void
.end method
