.class public Lnubia/preference/NubiaPreference;
.super Ljava/lang/Object;
.source "NubiaPreference.java"

# interfaces
.implements Lnubia/preference/IPreference;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnubia/preference/NubiaPreference;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getDialogTitle(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceEdittextContainerId()I
    .locals 1

    .prologue
    const v0, 0x30d004f

    return v0
.end method

.method public getPreferenceMessageId()I
    .locals 1

    .prologue
    const v0, 0x30d0030

    return v0
.end method

.method public getPreferenceNubiaSwitchId()I
    .locals 1

    .prologue
    const v0, 0x30d0057

    return v0
.end method

.method public getPreferenceSeekBarId()I
    .locals 1

    .prologue
    const v0, 0x30d0056

    return v0
.end method

.method public getSeekBarPreferenceLayout()I
    .locals 1

    .prologue
    const v0, 0x3030021

    return v0
.end method
