.class Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;
.super Ljava/lang/Object;
.source "SmartkeySupportAppSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartkeyAppHolder"
.end annotation


# instance fields
.field mImageView:Landroid/widget/ImageView;

.field mRadio:Landroid/widget/RadioButton;

.field mTextView:Landroid/widget/TextView;

.field final synthetic this$1:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;


# direct methods
.method private constructor <init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;)V
    .locals 0

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;->this$1:Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;
    .param p2, "x1"    # Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$1;

    .prologue
    .line 532
    invoke-direct {p0, p1}, Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater$SmartkeyAppHolder;-><init>(Lcom/android/settings_ex/smartkey/SmartkeySupportAppSettings$SmartkeySelectAdpater;)V

    return-void
.end method
