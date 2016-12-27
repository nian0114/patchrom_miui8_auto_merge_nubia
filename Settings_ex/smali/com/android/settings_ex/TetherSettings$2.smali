.class Lcom/android/settings_ex/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TetherSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TetherSettings;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickTodo(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/settings_ex/TetherSettings$2;->this$0:Lcom/android/settings_ex/TetherSettings;

    # invokes: Lcom/android/settings_ex/TetherSettings;->usbPerferenceChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/TetherSettings;->access$100(Lcom/android/settings_ex/TetherSettings;Z)V

    .line 238
    return-void
.end method
