.class public Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;
.super Lcom/android/settings_ex/AppProgressPreference;
.source "PowerGaugePreference.java"


# instance fields
.field private final mContentDescription:Ljava/lang/CharSequence;

.field private mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;


# virtual methods
.method getInfo()Lcom/android/settings_ex/fuelgauge/BatteryEntry;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mInfo:Lcom/android/settings_ex/fuelgauge/BatteryEntry;

    return-object v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 56
    invoke-super {p0, p1}, Lcom/android/settings_ex/AppProgressPreference;->onBindView(Landroid/view/View;)V

    .line 58
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 59
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 60
    .local v0, "titleView":Landroid/widget/TextView;
    iget-object v1, p0, Lcom/android/settings_ex/fuelgauge/PowerGaugePreference;->mContentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 62
    .end local v0    # "titleView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method
