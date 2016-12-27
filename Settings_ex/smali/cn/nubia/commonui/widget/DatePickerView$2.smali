.class Lcn/nubia/commonui/widget/DatePickerView$2;
.super Ljava/lang/Object;
.source "DatePickerView.java"

# interfaces
.implements Lcn/nubia/commonui/widget/WheelView$OnValueChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/widget/DatePickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/widget/DatePickerView;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/widget/DatePickerView;)V
    .locals 0

    .prologue
    .line 110
    iput-object p1, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Lcn/nubia/commonui/widget/WheelView;II)V
    .locals 2
    .param p1, "wheelView"    # Lcn/nubia/commonui/widget/WheelView;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 115
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    add-int/lit8 v1, p3, -0x1

    # setter for: Lcn/nubia/commonui/widget/DatePickerView;->mMonth:I
    invoke-static {v0, v1}, Lcn/nubia/commonui/widget/DatePickerView;->access$102(Lcn/nubia/commonui/widget/DatePickerView;I)I

    .line 116
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->adjustMaxDay()V

    .line 117
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->notifyDateChanged()V

    .line 118
    iget-object v0, p0, Lcn/nubia/commonui/widget/DatePickerView$2;->this$0:Lcn/nubia/commonui/widget/DatePickerView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/DatePickerView;->updateSpinners()V

    .line 119
    return-void
.end method
