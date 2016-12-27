.class Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;
.super Ljava/lang/Object;
.source "DatePickerDialog.java"

# interfaces
.implements Lcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/widget/DatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatePickerOnDateChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/DatePickerDialog;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/widget/DatePickerDialog;Lcn/nubia/commonui/widget/DatePickerDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/widget/DatePickerDialog;
    .param p2, "x1"    # Lcn/nubia/commonui/widget/DatePickerDialog$1;

    .prologue
    .line 104
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;-><init>(Lcn/nubia/commonui/widget/DatePickerDialog;)V

    return-void
.end method


# virtual methods
.method public onDateChanged(Lcn/nubia/commonui/widget/DatePickerView;III)V
    .locals 2
    .param p1, "view"    # Lcn/nubia/commonui/widget/DatePickerView;
    .param p2, "year"    # I
    .param p3, "monthOfYear"    # I
    .param p4, "dayOfMonth"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    # getter for: Lcn/nubia/commonui/widget/DatePickerDialog;->mDatePicker:Lcn/nubia/commonui/widget/DatePickerView;
    invoke-static {v0}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$300(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;->this$0:Lcn/nubia/commonui/widget/DatePickerDialog;

    # getter for: Lcn/nubia/commonui/widget/DatePickerDialog;->mOnDateChangeListener:Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;
    invoke-static {v1}, Lcn/nubia/commonui/widget/DatePickerDialog;->access$200(Lcn/nubia/commonui/widget/DatePickerDialog;)Lcn/nubia/commonui/widget/DatePickerDialog$DatePickerOnDateChangeListener;

    move-result-object v1

    invoke-virtual {v0, p2, p3, p4, v1}, Lcn/nubia/commonui/widget/DatePickerView;->update(IIILcn/nubia/commonui/widget/DatePickerView$OnDateChangeListener;)V

    .line 112
    return-void
.end method
