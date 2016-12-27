.class final Lcom/android/settings_ex/profile/SUAppPickerFragment$1;
.super Ljava/lang/Object;
.source "SUAppPickerFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings_ex/profile/SUAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private collator:Ljava/text/Collator;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 288
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$1;->collator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;)I
    .locals 3
    .param p1, "a"    # Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;
    .param p2, "b"    # Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/settings_ex/profile/SUAppPickerFragment$1;->collator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    iget-object v2, p2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 286
    check-cast p1, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    check-cast p2, Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ex/profile/SUAppPickerFragment$1;->compare(Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;Lcom/android/settings_ex/profile/SUAppPickerFragment$MyApplicationInfo;)I

    move-result v0

    return v0
.end method
