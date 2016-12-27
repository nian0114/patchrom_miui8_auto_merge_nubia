.class Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "AppPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/applications/AppPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/drawable/Drawable;",
        "Ljava/lang/Void;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings_ex/applications/AppPreference;


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "params"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->this$0:Lcom/android/settings_ex/applications/AppPreference;

    # getter for: Lcom/android/settings_ex/applications/AppPreference;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppPreference;->access$000(Lcom/android/settings_ex/applications/AppPreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->this$0:Lcom/android/settings_ex/applications/AppPreference;

    iget-object v1, p0, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->this$0:Lcom/android/settings_ex/applications/AppPreference;

    # getter for: Lcom/android/settings_ex/applications/AppPreference;->mInfo:Landroid/content/pm/ResolveInfo;
    invoke-static {v1}, Lcom/android/settings_ex/applications/AppPreference;->access$200(Lcom/android/settings_ex/applications/AppPreference;)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->this$0:Lcom/android/settings_ex/applications/AppPreference;

    # getter for: Lcom/android/settings_ex/applications/AppPreference;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/settings_ex/applications/AppPreference;->access$100(Lcom/android/settings_ex/applications/AppPreference;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    # setter for: Lcom/android/settings_ex/applications/AppPreference;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0, v1}, Lcom/android/settings_ex/applications/AppPreference;->access$002(Lcom/android/settings_ex/applications/AppPreference;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->this$0:Lcom/android/settings_ex/applications/AppPreference;

    # getter for: Lcom/android/settings_ex/applications/AppPreference;->mIcon:Landroid/graphics/drawable/Drawable;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppPreference;->access$000(Lcom/android/settings_ex/applications/AppPreference;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->doInBackground([Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "iconDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->this$0:Lcom/android/settings_ex/applications/AppPreference;

    # getter for: Lcom/android/settings_ex/applications/AppPreference;->icon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings_ex/applications/AppPreference;->access$300(Lcom/android/settings_ex/applications/AppPreference;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings_ex/applications/AppPreference$LoadIconTask;->onPostExecute(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
