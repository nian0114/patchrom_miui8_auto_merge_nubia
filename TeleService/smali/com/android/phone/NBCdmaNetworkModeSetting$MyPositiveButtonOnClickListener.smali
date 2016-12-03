.class final Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;
.super Ljava/lang/Object;
.source "NBCdmaNetworkModeSetting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NBCdmaNetworkModeSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyPositiveButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;


# direct methods
.method private constructor <init>(Lcom/android/phone/NBCdmaNetworkModeSetting;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NBCdmaNetworkModeSetting;Lcom/android/phone/NBCdmaNetworkModeSetting$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/NBCdmaNetworkModeSetting;
    .param p2, "x1"    # Lcom/android/phone/NBCdmaNetworkModeSetting$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;-><init>(Lcom/android/phone/NBCdmaNetworkModeSetting;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/NBCdmaNetworkModeSetting$MyPositiveButtonOnClickListener;->this$0:Lcom/android/phone/NBCdmaNetworkModeSetting;

    invoke-virtual {v0}, Lcom/android/phone/NBCdmaNetworkModeSetting;->finish()V

    return-void
.end method
