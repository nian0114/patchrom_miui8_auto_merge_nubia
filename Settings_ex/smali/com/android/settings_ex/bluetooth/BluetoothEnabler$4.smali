.class Lcom/android/settings_ex/bluetooth/BluetoothEnabler$4;
.super Ljava/lang/Object;
.source "BluetoothEnabler.java"

# interfaces
.implements Lcom/android/settings_ex/QuickClickAgent$OnClickedTodoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/bluetooth/BluetoothEnabler;-><init>(Landroid/content/Context;Lcom/android/settings_ex/widget/SwitchBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickTodo(Z)V
    .locals 1
    .param p1, "isChecked"    # Z

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothEnabler$4;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothEnabler;

    # invokes: Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->btSwitchChanged(Z)V
    invoke-static {v0, p1}, Lcom/android/settings_ex/bluetooth/BluetoothEnabler;->access$100(Lcom/android/settings_ex/bluetooth/BluetoothEnabler;Z)V

    .line 127
    return-void
.end method
