.class Lcom/android/settings_ex/ApnSettings$2;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/ApnSettings;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/ApnSettings;)V
    .locals 0

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings_ex/ApnSettings$2;->this$0:Lcom/android/settings_ex/ApnSettings;

    # invokes: Lcom/android/settings_ex/ApnSettings;->addNewApn()V
    invoke-static {v0}, Lcom/android/settings_ex/ApnSettings;->access$300(Lcom/android/settings_ex/ApnSettings;)V

    .line 193
    return-void
.end method
