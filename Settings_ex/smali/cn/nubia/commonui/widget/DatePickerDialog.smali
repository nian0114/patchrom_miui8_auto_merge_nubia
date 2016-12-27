.class public Lcn/nubia/commonui/widget/DatePickerDialog;
.super Lcn/nubia/commonui/app/AlertDialog;
.source "DatePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/DatePickerDialog$1;,
        Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;,
        Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;,
        Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;
    }
.end annotation


# instance fields
.field private final mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

.field private final mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

.field private mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

.field private mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I

    .prologue
    const/4 v5, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Lcn/nubia/commonui/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 40
    iput-object p3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    .line 42
    sget v3, Lcn/nubia/commonui/R$string;->nubia_setting_date:I

    invoke-virtual {p0, v3}, Lcn/nubia/commonui/widget/DatePickerDialog;->setTitle(I)V

    .line 43
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 44
    .local v1, "themeContext":Landroid/content/Context;
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 46
    .local v0, "inflater":Landroid/view/LayoutInflater;
    sget v3, Lcn/nubia/commonui/R$layout;->nubia_date_picker_dialog:I

    invoke-virtual {v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 48
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/DatePickerDialog;->setView(Landroid/view/View;)V

    .line 49
    sget v3, Lcn/nubia/commonui/R$id;->nubia_datePickerView:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcn/nubia/commonui/widget/DatePickerView;

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    .line 52
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    if-nez v3, :cond_0

    .line 53
    new-instance v3, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-direct {v3, p0, v5}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    .line 56
    :cond_0
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    invoke-virtual {v3, p4, p5, p6, v4}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 58
    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    if-nez v3, :cond_1

    .line 59
    new-instance v3, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-direct {v3, p0, v5}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V

    iput-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    .line 62
    :cond_1
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 64
    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnClickListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lcn/nubia/commonui/widget/DatePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;
    .param p3, "year"    # I
    .param p4, "monthOfYear"    # I
    .param p5, "dayOfMonth"    # I

    .prologue
    .line 32
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcn/nubia/commonui/widget/DatePickerDialog;-><init>(Landroid/content/Context;ILcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 33
    return-void
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 13
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;

    .prologue
    .line 13
    invoke-direct {p0}, Lcn/nubia/commonui/widget/DatePickerDialog;->tryNotifyDateSet()V

    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 78
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->clearFocus()V

    .line 80
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mCallBack:Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/DatePickerView;->getYear()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/DatePickerView;->getMonth()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v4}, Lcn/nubia/commonui/widget/DatePickerView;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/nubia/commonui/widget/DatePickerDialog$OnDateSetListener;->onDateSet(Lcn/nubia/commonui/widget/DatePickerView;III)V

    .line 83
    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Lcn/nubia/commonui/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 100
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    const-string v1, "PICKER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/DatePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 102
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 92
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/DatePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 94
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Lcn/nubia/commonui/app/AlertDialog;->onStop()V

    .line 88
    return-void
.end method
