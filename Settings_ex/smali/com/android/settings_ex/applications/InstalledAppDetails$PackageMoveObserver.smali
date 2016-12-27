.class Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;
.super Landroid/content/pm/IPackageMoveObserver$Stub;
.source "InstalledAppDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/InstalledAppDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageMoveObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/InstalledAppDetails;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/android/settings_ex/applications/InstalledAppDetails$PackageMoveObserver;->this$0:Lcom/android/settings_ex/applications/InstalledAppDetails;

    invoke-direct {p0}, Landroid/content/pm/IPackageMoveObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreated(ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 262
    return-void
.end method

.method public onStatusChanged(IIJ)V
    .locals 0
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .prologue
    .line 258
    return-void
.end method
