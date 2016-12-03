.class Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;
.super Ljava/lang/Object;
.source "NBActionModeCallback.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBActionModeCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckAllOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBActionModeCallback;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBActionModeCallback;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBActionModeCallback;Lcom/android/phone/NBActionModeCallback$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBActionModeCallback;
    .param p2, "x1"    # Lcom/android/phone/NBActionModeCallback$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;-><init>(Lcom/android/phone/NBActionModeCallback;)V

    return-void
.end method

.method private performClick()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$200(Lcom/android/phone/NBActionModeCallback;)Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$000(Lcom/android/phone/NBActionModeCallback;)Lcom/android/phone/NBActionModeCallback$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/NBActionModeCallback$Listener;->checkAll()V

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$200(Lcom/android/phone/NBActionModeCallback;)Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->unselectAll:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NBActionModeCallback;->access$300(Lcom/android/phone/NBActionModeCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$000(Lcom/android/phone/NBActionModeCallback;)Lcom/android/phone/NBActionModeCallback$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/phone/NBActionModeCallback$Listener;->unCheckAll()V

    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mCheckAllBox:Lcn/nubia/commonui/phone/widget/NubiaSelectAll;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$200(Lcom/android/phone/NBActionModeCallback;)Lcn/nubia/commonui/phone/widget/NubiaSelectAll;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->selectAll:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/NBActionModeCallback;->access$400(Lcom/android/phone/NBActionModeCallback;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/phone/widget/NubiaSelectAll;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    iget-object v0, p0, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->this$0:Lcom/android/phone/NBActionModeCallback;

    # getter for: Lcom/android/phone/NBActionModeCallback;->mListener:Lcom/android/phone/NBActionModeCallback$Listener;
    invoke-static {v0}, Lcom/android/phone/NBActionModeCallback;->access$000(Lcom/android/phone/NBActionModeCallback;)Lcom/android/phone/NBActionModeCallback$Listener;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/NBActionModeCallback$CheckAllOnClickListener;->performClick()V

    :cond_0
    return-void
.end method
