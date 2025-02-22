.class public Lnubia/widget/TimePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimePickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnubia/widget/TimePickerDialog$1;,
        Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;,
        Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;,
        Lnubia/widget/TimePickerDialog$onTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field private final mCallBack:Lnubia/widget/TimePickerDialog$onTimeSetListener;

.field private mInitialHourDay:I

.field private mInitialMinute:I

.field private mOnClickListener:Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;

.field private mOnTimeChangeListener:Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

.field private final mTimePickerView:Lnubia/widget/TimePickerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILnubia/widget/TimePickerDialog$onTimeSetListener;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "callBack"    # Lnubia/widget/TimePickerDialog$onTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I

    .prologue
    const/4 v6, 0x0

    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    iput p4, p0, Lnubia/widget/TimePickerDialog;->mInitialHourDay:I

    iput p5, p0, Lnubia/widget/TimePickerDialog;->mInitialMinute:I

    const v3, 0x30c0008

    invoke-virtual {p0, v3}, Lnubia/widget/TimePickerDialog;->setTitle(I)V

    invoke-virtual {p0}, Lnubia/widget/TimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .local v1, "themeContext":Landroid/content/Context;
    iget-object v3, p0, Lnubia/widget/TimePickerDialog;->mOnClickListener:Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;

    if-nez v3, :cond_0

    new-instance v3, Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;

    invoke-direct {v3, p0, v6}, Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;-><init>(Lnubia/widget/TimePickerDialog;Lnubia/widget/TimePickerDialog$1;)V

    iput-object v3, p0, Lnubia/widget/TimePickerDialog;->mOnClickListener:Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;

    :cond_0
    const/4 v3, -0x1

    const v4, 0x1040013

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/TimePickerDialog;->mOnClickListener:Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lnubia/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v3, -0x2

    const/high16 v4, 0x1040000

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v5, p0, Lnubia/widget/TimePickerDialog;->mOnClickListener:Lnubia/widget/TimePickerDialog$TimePickerOnClickListener;

    invoke-virtual {p0, v3, v4, v5}, Lnubia/widget/TimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x3030033

    invoke-virtual {v0, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Lnubia/widget/TimePickerDialog;->setView(Landroid/view/View;)V

    iput-object p3, p0, Lnubia/widget/TimePickerDialog;->mCallBack:Lnubia/widget/TimePickerDialog$onTimeSetListener;

    const v3, 0x30d0002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnubia/widget/TimePickerView;

    iput-object v3, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    iget-object v3, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    iget v4, p0, Lnubia/widget/TimePickerDialog;->mInitialHourDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnubia/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v3, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    iget v4, p0, Lnubia/widget/TimePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lnubia/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    iget-object v3, p0, Lnubia/widget/TimePickerDialog;->mOnTimeChangeListener:Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    if-nez v3, :cond_1

    new-instance v3, Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-direct {v3, p0, v6}, Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;-><init>(Lnubia/widget/TimePickerDialog;Lnubia/widget/TimePickerDialog$1;)V

    iput-object v3, p0, Lnubia/widget/TimePickerDialog;->mOnTimeChangeListener:Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    :cond_1
    iget-object v3, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    iget-object v4, p0, Lnubia/widget/TimePickerDialog;->mOnTimeChangeListener:Lnubia/widget/TimePickerDialog$TimePickerOnTimeChangeListener;

    invoke-virtual {v3, v4}, Lnubia/widget/TimePickerView;->setOnTimeChangedListener(Lnubia/widget/TimePickerView$OnTimeChangeListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lnubia/widget/TimePickerDialog$onTimeSetListener;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Lnubia/widget/TimePickerDialog$onTimeSetListener;
    .param p3, "hourOfDay"    # I
    .param p4, "minute"    # I

    .prologue
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lnubia/widget/TimePickerDialog;-><init>(Landroid/content/Context;ILnubia/widget/TimePickerDialog$onTimeSetListener;II)V

    return-void
.end method

.method static synthetic access$200(Lnubia/widget/TimePickerDialog;)V
    .locals 0
    .param p0, "x0"    # Lnubia/widget/TimePickerDialog;

    .prologue
    invoke-direct {p0}, Lnubia/widget/TimePickerDialog;->tryNotifyTimeSet()V

    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    iget-object v0, p0, Lnubia/widget/TimePickerDialog;->mCallBack:Lnubia/widget/TimePickerDialog$onTimeSetListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    invoke-virtual {v0}, Lnubia/widget/TimePickerView;->clearFocus()V

    iget-object v0, p0, Lnubia/widget/TimePickerDialog;->mCallBack:Lnubia/widget/TimePickerDialog$onTimeSetListener;

    iget-object v1, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    iget-object v2, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    invoke-virtual {v2}, Lnubia/widget/TimePickerView;->getCurrentHour()I

    move-result v2

    iget-object v3, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    invoke-virtual {v3}, Lnubia/widget/TimePickerView;->getCurrentMinute()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lnubia/widget/TimePickerDialog$onTimeSetListener;->onTimeSet(Lnubia/widget/TimePickerView;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    const-string v1, "PICKER"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/TimePickerView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "PICKER"

    iget-object v2, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    invoke-virtual {v2}, Lnubia/widget/TimePickerView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    return-void
.end method

.method public final updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minute"    # I

    .prologue
    iget-object v0, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/TimePickerView;->setCurrentHour(Ljava/lang/Integer;)V

    iget-object v0, p0, Lnubia/widget/TimePickerDialog;->mTimePickerView:Lnubia/widget/TimePickerView;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnubia/widget/TimePickerView;->setCurrentMinute(Ljava/lang/Integer;)V

    return-void
.end method
