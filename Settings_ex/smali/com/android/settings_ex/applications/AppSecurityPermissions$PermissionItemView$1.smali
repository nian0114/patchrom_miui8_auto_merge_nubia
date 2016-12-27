.class Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView$1;
.super Ljava/lang/Object;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;)V
    .locals 0

    .prologue
    .line 246
    iput-object p1, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 249
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;

    invoke-virtual {v1}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 252
    .local v0, "pm":Landroid/content/pm/PackageManager;
    iget-object v1, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView$1;->this$0:Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->setVisibility(I)V

    .line 253
    return-void
.end method
