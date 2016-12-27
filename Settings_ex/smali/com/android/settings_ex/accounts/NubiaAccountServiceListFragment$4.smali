.class Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;
.super Ljava/lang/Object;
.source "NubiaAccountServiceListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->setHeadImageView(Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

.field final synthetic val$info:Lcn/nubia/accounts/auth/NubiaAccountInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;Lcn/nubia/accounts/auth/NubiaAccountInfo;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    iput-object p2, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->val$info:Lcn/nubia/accounts/auth/NubiaAccountInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f020391

    .line 205
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    invoke-virtual {v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->val$info:Lcn/nubia/accounts/auth/NubiaAccountInfo;

    if-eqz v1, :cond_2

    .line 207
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->val$info:Lcn/nubia/accounts/auth/NubiaAccountInfo;

    invoke-virtual {v1}, Lcn/nubia/accounts/auth/NubiaAccountInfo;->getmHeadImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 208
    .local v0, "image":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 209
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$400(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 221
    .end local v0    # "image":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-void

    .line 211
    .restart local v0    # "image":Landroid/graphics/Bitmap;
    :cond_1
    const-string v1, "NubiaAccountService"

    const-string v2, "image is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$400(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0

    .line 216
    .end local v0    # "image":Landroid/graphics/Bitmap;
    :cond_2
    iget-object v1, p0, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment$4;->this$0:Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;

    # getter for: Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->mHeadImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;->access$400(Lcom/android/settings_ex/accounts/NubiaAccountServiceListFragment;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 218
    const-string v1, "NubiaAccountService"

    const-string v2, "nubiaAccountInfo is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
