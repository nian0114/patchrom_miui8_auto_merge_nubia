.class Lcn/nubia/commonui/preference/MultiSelectListPreference$1;
.super Ljava/lang/Object;
.source "MultiSelectListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/commonui/preference/MultiSelectListPreference;->onPrepareDialogBuilder(Lcn/nubia/commonui/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;


# direct methods
.method constructor <init>(Lcn/nubia/commonui/preference/MultiSelectListPreference;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I
    .param p3, "isChecked"    # Z

    .prologue
    .line 188
    if-eqz p3, :cond_0

    .line 189
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    # getter for: Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$200(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    # getter for: Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$100(Lcn/nubia/commonui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lcn/nubia/commonui/preference/MultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$076(Lcn/nubia/commonui/preference/MultiSelectListPreference;I)Z

    .line 193
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    iget-object v1, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    # getter for: Lcn/nubia/commonui/preference/MultiSelectListPreference;->mNewValues:Ljava/util/Set;
    invoke-static {v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$200(Lcn/nubia/commonui/preference/MultiSelectListPreference;)Ljava/util/Set;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/commonui/preference/MultiSelectListPreference$1;->this$0:Lcn/nubia/commonui/preference/MultiSelectListPreference;

    # getter for: Lcn/nubia/commonui/preference/MultiSelectListPreference;->mEntryValues:[Ljava/lang/CharSequence;
    invoke-static {v2}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$100(Lcn/nubia/commonui/preference/MultiSelectListPreference;)[Ljava/lang/CharSequence;

    move-result-object v2

    aget-object v2, v2, p2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    # |= operator for: Lcn/nubia/commonui/preference/MultiSelectListPreference;->mPreferenceChanged:Z
    invoke-static {v0, v1}, Lcn/nubia/commonui/preference/MultiSelectListPreference;->access$076(Lcn/nubia/commonui/preference/MultiSelectListPreference;I)Z

    goto :goto_0
.end method
