.class public Lcn/nubia/commonui/widget/TimePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/TimePickerDialog$1;,
        Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;,
        Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;,
        Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

.field private mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;

.field private mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

.field private final mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 33
    sget v3, Lcn/nubia/commonui/R$string;->nubia_time_picker_dialog_title:I

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/TimePickerDialog;->setTitle(I)V

    .line 34
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 36
    .local v1, "themeContext":Landroid/content/Context;
    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;

    if-nez v3, :cond_0

    .line 37
    new-instance v3, Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;

    .line 40
    :cond_0
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 42
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 44
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->nubia_time_picker_dialog:I

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/TimePickerDialog;->setView(Landroid/view/View;)V

    .line 49
    iput-object p3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

    .line 50
    sget v3, Lcn/nubia/commonui/R$id;->nubia_timePickerView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/TimePickerView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    .line 52
    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    .line 53
    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 55
    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    if-nez v3, :cond_1

    .line 56
    new-instance v3, Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-direct {v3, p0, v6}, Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lcn/nubia/commonui/widget/TimePickerDialog;Lcn/nubia/commonui/widget/TimePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    .line 58
    :cond_1
    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    iget-object v4, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mOnTimeChangeListener:Lcn/nubia/commonui/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-virtual {v3, v4}, Lcn/nubia/commonui/widget/TimePickerView;->setOnTimeChangedListener(Lcn/nubia/commonui/widget/TimePickerView$OnTimeChangeListener;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .prologue
    .line 27
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/commonui/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;II)V

    .line 28
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/TimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/TimePickerDialog;

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/commonui/widget/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/TimePickerView;->clearFocus()V

    .line 69
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;

    iget-object v1, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/TimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcn/nubia/commonui/widget/TimePickerDialog$onTimeSetListener;->onTimeSet(Lcn/nubia/commonui/widget/TimePickerView;II)V

    .line 73
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    const-string v1, "PICKER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/TimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 85
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 89
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 90
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/TimePickerDialog;->mTimePickerView:Lcn/nubia/commonui/widget/TimePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/TimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 91
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 78
    return-void
.end method
