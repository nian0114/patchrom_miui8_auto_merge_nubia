.class Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;
.super Ljava/lang/Object;
.source "BluetoothSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/bluetooth/BluetoothSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/bluetooth/BluetoothSettings;)V
    .locals 0

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/settings_ex/bluetooth/BluetoothSettings$3;->this$0:Lcom/android/settings_ex/bluetooth/BluetoothSettings;

    invoke-virtual {v0}, Lcom/android/settings_ex/bluetooth/BluetoothSettings;->updateBtNameSummary()V

    .line 489
    return-void
.end method
