.class Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;
.super Ljava/lang/Object;
.source "SettingsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->removeUserStateLocked(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

.field final synthetic val$secureKey:I


# direct methods
.method constructor <init>(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;I)V
    .locals 0

    .prologue
    .line 1517
    iput-object p1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    iput p2, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;->val$secureKey:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1520
    iget-object v0, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;->this$1:Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;

    # getter for: Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->mSettingsStates:Landroid/util/SparseArray;
    invoke-static {v0}, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;->access$300(Lcom/android/providers/settings/SettingsProvider$SettingsRegistry;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/providers/settings/SettingsProvider$SettingsRegistry$2;->val$secureKey:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 1521
    return-void
.end method
