import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.recipes.ICraftingRecipe;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemTransformer;
import mods.thermalexpansion.InductionSmelter;

//recipes.replaceAllOccurences(<ore:ingot

//recipes.replaceAllOccurences(<ore:circuitBasic>, <gregtech:meta_item_2:32488>);
//recipes.replaceAllOccurences(<ore:circuitAdvanced>, <gregtech:meta_item_2:32489>);
//recipes.replaceAllOccurences(<ore:circuitElite>, <gregtech:meta_item_2:32490>);

val centrifuge = RecipeMap.getByName("centrifuge");
centrifuge.recipeBuilder()
	.inputs(<ic2:misc_resource:4> * 1)
	.outputs([<gregtech:meta_item_1:32627> * 3, <ic2:crafting:20> * 1])
	.duration(300)
	.EUt(5)
	.buildAndRegister();
RecipeMap.getByName("extractor").recipeBuilder()
	.inputs(<ic2:rubber_wood> * 1)
	.outputs(<gregtech:meta_item_1:32627> * 1)
	.duration(600)
	.EUt(5)
	.buildAndRegister();
	
recipes.removeByRecipeName("unidict:platelead_x1_size.2");
recipes.removeByRecipeName("unidict:plategold_x1_size.2");
recipes.removeByRecipeName("unidict:platetin_x1_size.2");
recipes.removeByRecipeName("unidict:platebronze_x1_size.2");
recipes.removeByRecipeName("unidict:platecopper_x1_size.2");
recipes.removeByRecipeName("ic2:250");
recipes.removeByRecipeName("unidict:platenickel_x1_size.2");
recipes.removeByRecipeName("unidict:plateuranium_x1_size.2");
recipes.removeByRecipeName("unidict:plateiron_x1_size.2");
recipes.removeByRecipeName("unidict:platealuminum_x1_size.2");
recipes.removeByRecipeName("unidict:platesilver_x1_size.2");
recipes.removeByRecipeName("unidict:platebrass_x1_size.2");
recipes.removeByRecipeName("unidict:platesteel_x1_size.2");
recipes.removeByRecipeName("unidict:plateelectrum_x1_size.2");

recipes.removeByRecipeName("unidict:gearcopper_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:geargold_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:geariridium_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:geariron_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:gearlead_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:gearplatinum_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:gearsilver_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:geartin_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:geartin_x1_shape. a aba a");
recipes.removeByRecipeName("unidict:gearbronze_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:gearbronze_x1_shape. a aba a");
recipes.removeByRecipeName("unidict:gearelectrum_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:gearinvar_x1_shape. a a a a");
recipes.removeByRecipeName("unidict:gearsteel_x1_shape. a a a a");

mods.thermalexpansion.InductionSmelter.removeRecipe(<thermalfoundation:material:67>, <thermalfoundation:material:770> * 4);
mods.thermalexpansion.InductionSmelter.addRecipe(<thermalfoundation:glass:3> * 2, <gregtech:meta_item_1:2035>, <gregtech:meta_item_1:2138> * 4, 8000);

//Copper
recipes.removeByRecipeName("ic2:352");
recipes.addShapeless("new-ic2-gregtech-cable-conversion-copper", <ic2:cable:0>.withTag({type: (0 as byte), insulation: (0 as byte)}) * 2, [<gregtech:cable:18>]);

//Tin
recipes.removeByRecipeName("ic2:353");
recipes.addShapeless("new-ic2-gregtech-cable-conversion-tin", <ic2:cable:4>.withTag({type: (4 as byte), insulation: (0 as byte)}) * 3, [<gregtech:cable:71>]);

//Gold
recipes.removeByRecipeName("ic2:355");
recipes.addShapeless("new-ic2-gregtech-cable-conversion-gold", <ic2:cable:2>.withTag({type: (2 as byte), insulation: (0 as byte)}) * 4, [<gregtech:cable:26>]);

/*for oldRecipe in recipes.getRecipesFor(oreDict["circuitBasic"]) {
	var replacement as IItemStack;
	if (oldRecipe.resourceDomain == "ic2") {
		replacement = <ic2:crafting:1>;
	}
	else if (oldRecipe.resourceDomain == "mekanism") {
		replacement = <mekanism:controlcircuit:0>;
	}
	else {
		replacement = <gregtech:meta_item_1:32701>;
	}
	val oldIngredients = oldRecipe.ingredients1D as IIngredient[];
	var newIngredients = [null,null,null,null,null,null,null,null,null] as IIngredient[];
	var n = 0;
	for ingredient in oldIngredients {
		val oreDictEntry = oreDict["circuitBasic"] as IIngredient;
		if (oreDictEntry has ingredient) {
			newIngredients[n] = <ic2:crafting:1>;
		}
		else {
			newIngredients[n] = ingredient;
		}
		n = n + 1;
	}
	if (n == 1) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0]]);
	}
	else if (n == 2) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1]]);
	}
	else if (n == 3) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2]]);
	}
	else if (n == 4) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3]]);
	}
	else if (n == 5) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4]]);
	}
	else if (n == 6) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5]]);
	}
	else if (n == 7) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5], newIngredients[6]]);
	}
	else if (n == 8) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5], newIngredients[6], newIngredients[7]]);
	}
	else if (n == 9) {
		if (oldRecipe.shaped) {
			recipes.removeShaped(oldRecipe.output, oldIngredients);
		}
		else {
			recipes.removeShapeless(oldRecipe.output, oldIngredients);
		}
		recipes.addShaped(oldRecipe.name, oldRecipe.output, [newIngredients[0], newIngredients[1], newIngredients[2], newIngredients[3], newIngredients[4], newIngredients[5], newIngredients[6], newIngredients[7], newIngredients[8]]);
	}
}*/

/*for oldRecipe in recipes.getRecipesFor(oreDict["circuitAdvanced"]) {
	var replacement as IItemStack;
	if (oldRecipe.resourceDomain == "ic2") {
		replacement = <ic2:crafting:2>;
	}
	else if (oldRecipe.resourceDomain == "mekanism") {
		replacement = <mekanism:controlcircuit:1>;
	}
	else {
		replacement = <gregtech:meta_item_1:32703>;
	}
	val oldIngredients = oldRecipe.ingredients1D as IIngredient[];
	var newIngredients as [null,null,null,null,null,null,null,null,null] IIngredient[];
	for ingredient in oldIngredients {
	val oreDictEntry = oreDict["ore:circuitAdvanced"] as IIngredient;
		if (oreDictEntry has ingredient) {
			newIngredients += <ic2:crafting:1>;
		}
		else {
			newIngredients += ingredient;
		}
	}
	if (oldRecipe.shaped) {
		recipes.removeShaped(oldRecipe.output, oldIngredients);
	}
	else {
		recipes.removeShapeless(oldRecipe.output, oldIngredients);
	}
	recipes.addShaped(oldRecipe.name, oldRecipe.output, newIngredients);
}*/