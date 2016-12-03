.class Lcom/android/server/policy/TouchGestureFuncsCtrl$3;
.super Ljava/lang/Object;
.source "TouchGestureFuncsCtrl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/TouchGestureFuncsCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;


# direct methods
.method constructor <init>(Lcom/android/server/policy/TouchGestureFuncsCtrl;)V
    .locals 0

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/policy/TouchGestureFuncsCtrl$3;->this$0:Lcom/android/server/policy/TouchGestureFuncsCtrl;

    # getter for: Lcom/android/server/policy/TouchGestureFuncsCtrl;->mPhoneWindowManager:Lcom/android/server/policy/PhoneWindowManager;
    invoke-static {v0}, Lcom/android/server/policy/TouchGestureFuncsCtrl;->access$500(Lcom/android/server/policy/TouchGestureFuncsCtrl;)Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->takeScreenshotProxy()V

    .line 205
    return-void
.end method
