.class Lcom/android/settings_ex/net/NetworkPolicyEditor$1;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/net/NetworkPolicyEditor;->addPolicyAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/net/NetworkPolicyEditor;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/net/NetworkPolicyEditor;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor$1;->this$0:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/net/NetworkPolicyEditor$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings_ex/net/NetworkPolicyEditor$1;->this$0:Lcom/android/settings_ex/net/NetworkPolicyEditor;

    # invokes: Lcom/android/settings_ex/net/NetworkPolicyEditor;->addPolicyData()V
    invoke-static {v0}, Lcom/android/settings_ex/net/NetworkPolicyEditor;->access$000(Lcom/android/settings_ex/net/NetworkPolicyEditor;)V

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method
