.class Lnubia/widget/NubiaAnalogBigClockWithCity$1;
.super Landroid/content/BroadcastReceiver;
.source "NubiaAnalogBigClockWithCity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnubia/widget/NubiaAnalogBigClockWithCity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;


# direct methods
.method constructor <init>(Lnubia/widget/NubiaAnalogBigClockWithCity;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    # getter for: Lnubia/widget/NubiaAnalogBigClockWithCity;->mTimeZone:Ljava/lang/String;
    invoke-static {v1}, Lnubia/widget/NubiaAnalogBigClockWithCity;->access$000(Lnubia/widget/NubiaAnalogBigClockWithCity;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "time-zone"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    # getter for: Lnubia/widget/NubiaAnalogBigClockWithCity;->mCalendar:Ljava/util/Calendar;
    invoke-static {v1}, Lnubia/widget/NubiaAnalogBigClockWithCity;->access$100(Lnubia/widget/NubiaAnalogBigClockWithCity;)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .end local v0    # "tz":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    iget-object v2, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    invoke-virtual {v2}, Lnubia/widget/NubiaAnalogBigClockWithCity;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    # setter for: Lnubia/widget/NubiaAnalogBigClockWithCity;->mIs24Hour:Z
    invoke-static {v1, v2}, Lnubia/widget/NubiaAnalogBigClockWithCity;->access$202(Lnubia/widget/NubiaAnalogBigClockWithCity;Z)Z

    iget-object v1, p0, Lnubia/widget/NubiaAnalogBigClockWithCity$1;->this$0:Lnubia/widget/NubiaAnalogBigClockWithCity;

    # invokes: Lnubia/widget/NubiaAnalogBigClockWithCity;->updateTime()V
    invoke-static {v1}, Lnubia/widget/NubiaAnalogBigClockWithCity;->access$300(Lnubia/widget/NubiaAnalogBigClockWithCity;)V

    return-void
.end method
