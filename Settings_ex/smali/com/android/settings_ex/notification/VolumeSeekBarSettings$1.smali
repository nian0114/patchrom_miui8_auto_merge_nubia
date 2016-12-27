.class Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;
.super Ljava/lang/Object;
.source "VolumeSeekBarSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/notification/VolumeSeekBarSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/notification/VolumeSeekBarSettings;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/notification/VolumeSeekBarSettings;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings_ex/notification/VolumeSeekBarSettings$1;->this$0:Lcom/android/settings_ex/notification/VolumeSeekBarSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 62
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    move v0, v1

    .line 63
    .local v0, "isdown":Z
    :goto_0
    sparse-switch p2, :sswitch_data_0

    move v1, v2

    .line 69
    :sswitch_0
    return v1

    .end local v0    # "isdown":Z
    :cond_0
    move v0, v2

    .line 62
    goto :goto_0

    .line 63
    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method
