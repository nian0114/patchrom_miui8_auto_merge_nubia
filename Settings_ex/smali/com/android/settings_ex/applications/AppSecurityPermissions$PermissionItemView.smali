.class public Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;
.super Landroid/widget/LinearLayout;
.source "AppSecurityPermissions.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppSecurityPermissions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PermissionItemView"
.end annotation


# instance fields
.field mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field mGroup:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

.field mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

.field private mShowRevokeUI:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->setClickable(Z)V

    .line 153
    return-void
.end method

.method private addRevokeUIIfNecessary(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Lcn/nubia/commonui/app/AlertDialog$Builder;

    .prologue
    .line 235
    iget-boolean v2, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mShowRevokeUI:Z

    if-nez v2, :cond_1

    .line 257
    :cond_0
    :goto_0
    return-void

    .line 239
    :cond_1
    iget-object v2, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    iget v2, v2, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->mExistingReqFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    .line 242
    .local v0, "isRequired":Z
    :goto_1
    if-nez v0, :cond_0

    .line 246
    new-instance v1, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView$1;-><init>(Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;)V

    .line 255
    .local v1, "ocl":Landroid/content/DialogInterface$OnClickListener;
    const v2, 0x1040505

    invoke-virtual {p1, v2, v1}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 256
    const v2, 0x104000a

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0

    .line 239
    .end local v0    # "isRequired":Z
    .end local v1    # "ocl":Landroid/content/DialogInterface$OnClickListener;
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 194
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    if-eqz v6, :cond_1

    .line 195
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v6, :cond_0

    .line 196
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v6}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 199
    .local v4, "pm":Landroid/content/pm/PackageManager;
    new-instance v2, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    .local v2, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    iget-object v6, v6, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v2, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 201
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    iget v6, v6, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->descriptionRes:I

    if-eqz v6, :cond_2

    .line 202
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 218
    :goto_0
    invoke-virtual {v2, v9}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 219
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mGroup:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;

    invoke-virtual {v6, v4}, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionGroupInfo;->loadGroupIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 220
    invoke-direct {p0, v2}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->addRevokeUIIfNecessary(Lcn/nubia/commonui/app/AlertDialog$Builder;)V

    .line 221
    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog$Builder;->show()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 222
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v6, v9}, Lcn/nubia/commonui/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 224
    .end local v2    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    return-void

    .line 206
    .restart local v2    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .restart local v4    # "pm":Landroid/content/pm/PackageManager;
    :cond_2
    :try_start_0
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 207
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 211
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .local v1, "appName":Ljava/lang/CharSequence;
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v5, "sbuilder":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x10403d7

    new-array v8, v9, [Ljava/lang/Object;

    aput-object v1, v8, v10

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v6, "\n\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    iget-object v6, v6, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    goto :goto_0

    .line 208
    .end local v1    # "appName":Ljava/lang/CharSequence;
    .end local v5    # "sbuilder":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v6, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mPerm:Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;

    iget-object v1, v6, Lcom/android/settings_ex/applications/AppSecurityPermissions$MyPermissionInfo;->packageName:Ljava/lang/String;

    .restart local v1    # "appName":Ljava/lang/CharSequence;
    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 228
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 229
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppSecurityPermissions$PermissionItemView;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 232
    :cond_0
    return-void
.end method
