.class Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV7.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 124
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    # getter for: Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$000(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    # invokes: Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V
    invoke-static {v0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$100(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V

    .line 127
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    # getter for: Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I
    invoke-static {v0}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$000(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;)I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    const/16 v1, 0x8

    # invokes: Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->doInvalidatePanelMenu(I)V
    invoke-static {v0, v1}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$100(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)V

    .line 130
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    # setter for: Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuPosted:Z
    invoke-static {v0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$202(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;Z)Z

    .line 131
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7$1;->this$0:Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;

    # setter for: Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->mInvalidatePanelMenuFeatures:I
    invoke-static {v0, v2}, Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;->access$002(Lcn/nubia/commonui/actionbar/app/AppCompatDelegateImplV7;I)I

    .line 132
    return-void
.end method
