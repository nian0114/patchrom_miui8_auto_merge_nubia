.class Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;
.super Ljava/lang/Object;
.source "ListPopupWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerLongPress"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;


# direct methods
.method private constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;)V
    .locals 0

    .prologue
    .line 1484
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;
    .param p2, "x1"    # Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$1;

    .prologue
    .line 1484
    invoke-direct {p0, p1}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;-><init>(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 1487
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener$TriggerLongPress;->this$0:Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;

    # invokes: Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->onLongPress()V
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;->access$1000(Lcn/nubia/commonui/actionbar/widget/ListPopupWindow$ForwardingListener;)V

    .line 1488
    return-void
.end method
