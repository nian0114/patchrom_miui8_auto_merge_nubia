.class Lcom/android/settings_ex/TrustedCredentialsSettings$5$2;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/TrustedCredentialsSettings$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$5;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/TrustedCredentialsSettings$5;)V
    .locals 0

    .prologue
    .line 812
    iput-object p1, p0, Lcom/android/settings_ex/TrustedCredentialsSettings$5$2;->this$1:Lcom/android/settings_ex/TrustedCredentialsSettings$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 814
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 815
    return-void
.end method
