.class Lcom/android/settings_ex/profile/BacklightService$1;
.super Ljava/lang/Object;
.source "BacklightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/BacklightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/profile/BacklightService;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/profile/BacklightService;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/settings_ex/profile/BacklightService$1;->this$0:Lcom/android/settings_ex/profile/BacklightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 33
    const/4 v0, 0x0

    .line 34
    .local v0, "status":Z
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ex/profile/BacklightService$1;->this$0:Lcom/android/settings_ex/profile/BacklightService;

    # getter for: Lcom/android/settings_ex/profile/BacklightService;->start:Z
    invoke-static {v1}, Lcom/android/settings_ex/profile/BacklightService;->access$000(Lcom/android/settings_ex/profile/BacklightService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 35
    if-eqz v0, :cond_0

    .line 37
    iget-object v1, p0, Lcom/android/settings_ex/profile/BacklightService$1;->this$0:Lcom/android/settings_ex/profile/BacklightService;

    # invokes: Lcom/android/settings_ex/profile/BacklightService;->setBacklightOn()V
    invoke-static {v1}, Lcom/android/settings_ex/profile/BacklightService;->access$100(Lcom/android/settings_ex/profile/BacklightService;)V

    .line 43
    :goto_1
    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_2
    goto :goto_0

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ex/profile/BacklightService$1;->this$0:Lcom/android/settings_ex/profile/BacklightService;

    # invokes: Lcom/android/settings_ex/profile/BacklightService;->setBacklightOff()V
    invoke-static {v1}, Lcom/android/settings_ex/profile/BacklightService;->access$200(Lcom/android/settings_ex/profile/BacklightService;)V

    goto :goto_1

    .line 43
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 45
    :cond_2
    return-void
.end method
