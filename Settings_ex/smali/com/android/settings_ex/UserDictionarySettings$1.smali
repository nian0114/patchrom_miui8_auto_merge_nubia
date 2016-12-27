.class Lcom/android/settings_ex/UserDictionarySettings$1;
.super Ljava/lang/Object;
.source "UserDictionarySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/UserDictionarySettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/UserDictionarySettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/UserDictionarySettings;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings_ex/UserDictionarySettings$1;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Lcom/android/settings_ex/UserDictionarySettings$1;->this$0:Lcom/android/settings_ex/UserDictionarySettings;

    # invokes: Lcom/android/settings_ex/UserDictionarySettings;->showAddOrEditDialog(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v1}, Lcom/android/settings_ex/UserDictionarySettings;->access$000(Lcom/android/settings_ex/UserDictionarySettings;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-void
.end method
