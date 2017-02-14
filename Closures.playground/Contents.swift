//: Playground - noun: a place where people can play

import Cocoa

let volunteerCounts = [1,3,40,32,2,53,77,13]

func sortAscending(_ i: Int, _ j: Int) -> Bool
{
    return i < j
}

let volunteersSorted = volunteerCounts.sorted(by: sortAscending)



print (volunteersSorted)


let volunteersSorted2 = volunteerCounts.sorted(by: {i, j in i < j})
print(volunteersSorted2)

func makeTownGrand() -> (Int, Int) -> Int
{
    func buildRoads(byAddingLights lights: Int, toExtistingLights existingLights: Int) -> Int
    {
        return lights + existingLights
    }
    
    return buildRoads
}

var stoplights = 4
let townPlanByAddingLightsToExistingLights = makeTownGrand()
stoplights = townPlanByAddingLightsToExistingLights(4, stoplights)
print("Knowhere has \(stoplights) stoplights")

//functions as arguments

func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)?
{
    if condition(budget)
    {
        func buildRoads(byAddingLights lights: Int, toExtistingLights existingLights: Int) -> Int
        {
            return lights + existingLights
        }
        return buildRoads
    }
    else
    {
        return nil
    }
}

func evaluate(budget: Int) -> Bool
{
    return budget > 10_000
}




var stoplights2 = 4
if let townPlanByAddingLightsToExistingLights2 = makeTownGrand(withBudget: 1000, condition: evaluate)
{
    stoplights2 = townPlanByAddingLightsToExistingLights2(4, stoplights2)
}
print("Knowhere has \(stoplights2) stoplights2")

func makePopulationTracker(forInitialPopulation population: Int) -> (Int) -> Int
{
    var totalPopulation = population
    func populationTracker(growth: Int) -> Int
    {
        totalPopulation += growth
        return totalPopulation
    }
    return populationTracker
}

var currentPopulation = 5422
let growBy = makePopulationTracker(forInitialPopulation: currentPopulation)
growBy(500)
growBy(500)
growBy(500)
growBy(500)
currentPopulation = growBy(500)

let anotherGrowBy = growBy
anotherGrowBy(500)

//closures are reference types
var bigCityPopulation = 4061981
let bigCityGrowBy = makePopulationTracker(forInitialPopulation: bigCityPopulation)
bigCityPopulation = bigCityGrowBy(10000)
currentPopulation

// map(_:)

let precinctPopulations = [1244, 2021, 2157]
let projectedPopulations = precinctPopulations.map{
    (population: Int) -> Int in
    return population * 2
}
projectedPopulations

//filter(_:)
let bigProjections = projectedPopulations.filter{
    (projection: Int) -> Bool in
    return projection > 4000
}
bigProjections

let totalProjection = projectedPopulations.reduce(0) {
    (accumulatedProjection: Int, precinctPopulation: Int) -> Int in
    return accumulatedProjection + precinctPopulation
}
totalProjection




