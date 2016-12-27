.class public Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;
.super Ljava/lang/Object;
.source "SmartkeygetpkgUtils.java"


# instance fields
.field private context:Landroid/content/Context;

.field private pm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;->context:Landroid/content/Context;

    .line 16
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/smartkey/SmartkeygetpkgUtils;->pm:Landroid/content/pm/PackageManager;

    .line 17
    return-void
.end method
